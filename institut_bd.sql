PGDMP         #                  z            institut_db #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24659    institut_db    DATABASE     }   CREATE DATABASE institut_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.UTF-8' LC_CTYPE = 'fr_FR.UTF-8';
    DROP DATABASE institut_db;
                postgres    false            �            1259    24660 	   etudiants    TABLE     �   CREATE TABLE public.etudiants (
    id_etudiant integer NOT NULL,
    nom character(20),
    prenom character(20),
    sexe character(20)
);
    DROP TABLE public.etudiants;
       public         heap    postgres    false            �            1259    24673    evaluations    TABLE     �   CREATE TABLE public.evaluations (
    id_evaluation integer NOT NULL,
    note integer,
    id_etudiant integer,
    id_matiere integer
);
    DROP TABLE public.evaluations;
       public         heap    postgres    false            �            1259    24665    matieres    TABLE     �   CREATE TABLE public.matieres (
    id_matiere integer NOT NULL,
    libelle_matiere character(20),
    coeff_matiere integer
);
    DROP TABLE public.matieres;
       public         heap    postgres    false            �          0    24660 	   etudiants 
   TABLE DATA           C   COPY public.etudiants (id_etudiant, nom, prenom, sexe) FROM stdin;
    public          postgres    false    202   �       �          0    24673    evaluations 
   TABLE DATA           S   COPY public.evaluations (id_evaluation, note, id_etudiant, id_matiere) FROM stdin;
    public          postgres    false    204          �          0    24665    matieres 
   TABLE DATA           N   COPY public.matieres (id_matiere, libelle_matiere, coeff_matiere) FROM stdin;
    public          postgres    false    203   7                  2606    24664    etudiants etudiants_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.etudiants
    ADD CONSTRAINT etudiants_pkey PRIMARY KEY (id_etudiant);
 B   ALTER TABLE ONLY public.etudiants DROP CONSTRAINT etudiants_pkey;
       public            postgres    false    202            #           2606    24687    evaluations evaluations_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT evaluations_pkey PRIMARY KEY (id_evaluation);
 F   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT evaluations_pkey;
       public            postgres    false    204            !           2606    24669    matieres matieres_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.matieres
    ADD CONSTRAINT matieres_pkey PRIMARY KEY (id_matiere);
 @   ALTER TABLE ONLY public.matieres DROP CONSTRAINT matieres_pkey;
       public            postgres    false    203            $           2606    24676 (   evaluations evaluations_id_etudiant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT evaluations_id_etudiant_fkey FOREIGN KEY (id_etudiant) REFERENCES public.etudiants(id_etudiant);
 R   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT evaluations_id_etudiant_fkey;
       public          postgres    false    2847    202    204            %           2606    24681 '   evaluations evaluations_id_matiere_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT evaluations_id_matiere_fkey FOREIGN KEY (id_matiere) REFERENCES public.matieres(id_matiere);
 Q   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT evaluations_id_matiere_fkey;
       public          postgres    false    203    2849    204            �   U  x��YKS#7>��o{J���l/,�,��R��E�i{k$V��k~}Z��X=R1>
�s���Dn���e�2�Jt���g,���fg �E:�x��0
0��p���:-�Ç #����2:x����<<�k|� ưFZ#����t�� X���Z�
�.�9*�wa
c�ц�pe���܉�3�m�E�kp�O�ia���Ej��r+�h+�1@�GV� v����X��9�wB5G�u�/�B��4�0���%yr	���4*�12T�#�DQ2����m�C	��Eޅ?��m+���s�	\X�*S��S�A�0	/�p)l���[I�8��3����e�A(�[e�j�s�m��*j���OR)>������և����Y6��-V!\���~���;��^�e�uV��M��CX
EV���S���GxGQ˪����(%�q����9<�T|;�Ϲs�HN����%�������`��W¢t!Da+j!cyg�[�m3&s���_�������v����{g؃�T/�7�]v�r_e�Ű��͆��4'L܆��V|�&?]�:y�iaSx��� Yx/�y�;�<�E����c8g�6��k�����������cm�g�j�F"�S�Huj��ZԔ"���pF.Ӳ�� ��S��z�ê�.|#�/�0��<�g����Й���èO�-K�����ј`��9k4x_�j6�e�ޔ��~d�Lݝ�Q8��$q�T�F=\� V�q/�pu�AYAk��ݹs	&pc�|]��׎�A	�)<	WH�vb�75�i�����
K�8O�+��sX�X�dU���.�=��gɖW�J������>�r�@*��D+��O���R��6�̸�&Ee���Tҹ�`$l��v��>dX��RT�F5Dϭ�]��"Y���e�Ias>�<%�0�Ֆ�#�hV#_	�6�h�1�^�r|p�m�S�,׉oq�l��y=��=9�V���D�*�rq�>,
���k	�.�@��8Lo�"�'����aw'�7lY�{�^�A�U�}��jC�Ľ{}A}aJ<&�VnsnCaB��lh�M�_6^L�pR���^�E*a��+�&�%:Fq��ų�cϛ�Ǐm��9�mH��7��]�F�N�&��r�-<^o���� �N�l���y��-�0|'Y�zb��Uja_K��.�֣P2ћ����P6��q�/��N'~�X2y{�?Ky1��y�Hn�])�8�65�R��m�2���`��^����,|�"�z�YD��Ma�z�(�x����$�[�0�J���D�P(�Cʋ��B��*�#W-)����bN^(������%��c!�õVe�[3e�$��Ȓ��5<��0%�"�˛���6�{6#���ĭEv(�PZ�0�GG\P���Z��(��x��єC�!�4���Dަ.�!nü�/k���ހՏ����0�/9�p���E�j>̇�\���<��F:Q�H�<����k���ǰ��bm��SnN��'�iI\0)�@ �-�v�iHqɚ@���}c]�!��2�s����r������~�G+�,ėOB;��hI��{���� R      �      x������ � �      �     x�}Vێ�F}&�B?���>��"-�-�f�]�eK�te�!��8__�R�Lu���3����i�ԦfW-�@��_�T=�c��~��j��NUP�c���$x3�XU��f��`��wO�˯qX����54x��4��Q�E��k
,
���($�K���f]F(x��*�JYh�}��1�E����!��C�vK��U&��;��v�
�/S�9e����C$��������.4� )�-�J�M!)I�t:u�n��5��O����uq� J������d�>�����PZ>�G�x�(��s��g
x�}L�
�j�휫ǕD��"3����&�NI���t7���|h�C�ofAi��s:��� ;S�/!���C즖�zX"
�絣'�Ԑ�����e6]�E-6�{c!(Ԋ:qLe�u���N���Hum�6|b�15�D�R=Ų��R��ޟ˙���:t;��cA�ǻ�\Z�	os~�լP���E��'�{�N��Fcx
��ii��h���OH�������/q��χ2���~n�e��
~XZɷۢU�B�l�7)e3���h-׮\��X;~��7d/�DW��"��~Ȼ]3ܤs�?8��ׅG��C�|����r�gr�7=�8��Xt�nG~�5�K��xk[�5�z���N�^sז�BOb��eS3��Cg�~�	$�7�������z�cߧu����}�a�ꆚ7�� f��i>��!��!yڄ(x�ǘ���L!h��;��^�t�u����_�"�m݀�y}���b��B�����w     